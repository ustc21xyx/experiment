#include<vector>
#include<iostream>
#include<queue>
#include<map>
#include<fstream>
#include<sstream>
#include<string>

using namespace std;

struct Map_Cell
{
    int type;
    // TODO: 定义地图信息

};

struct Search_Cell
{
    int h;
    int g;
    // TODO: 定义搜索状态
    //需要所在位置的横纵坐标x，y，当前食物剩余量t, 父节点f
    int x;
    int y;
    int t;
    Search_Cell *f;

};

// 自定义比较函数对象，按照 Search_Cell 结构体的 g + h 属性进行比较
struct CompareF {
    bool operator()(const Search_Cell *a, const Search_Cell *b) const {
        return (a->g + a->h) >= (b->g + b->h); // 较小的 g + h 值优先级更高
    }
};

// TODO: 定义启发式函数
int Heuristic_Funtion(Search_Cell *p, pair<int,int> end_point)
{
    //定义为曼哈顿距离
    return abs(end_point.first - p->x) + abs( end_point.second - p->y); 
}
//TODO add two function
bool isEqualCell(Search_Cell * firstCell,Search_Cell* secondCell){
    return (firstCell->t == secondCell->t)&&(firstCell->x == secondCell->x)&&(firstCell->y == secondCell->y);
}

Search_Cell* isInPriorityQueue(priority_queue<Search_Cell *, vector<Search_Cell *>, CompareF> que, Search_Cell * cell)
{
    while(!que.empty()){
       Search_Cell *tmpCell = que.top();
       if( isEqualCell(tmpCell,cell)){
        return tmpCell;
       }
       que.pop();
    }
    return NULL;
}

bool isInVector(vector<Search_Cell*> vec, int x,int y,int t){
    for(int i=0;i<vec.size();i++){
        if(vec[i]->x == x &&vec[i]->y == y && vec[i]->t == t){
            return true;
        }
    }
    return false;
}

vector<Search_Cell* > cellCanReach(Search_Cell *curCell, Map_Cell** Map,int M,int N, int T,vector<Search_Cell *> closeCell, pair<int,int> end_point){
    int  x = curCell->x;
    int y = curCell->y;
    vector<Search_Cell *> reach;
    vector<pair<int,int> > directs={{1,0},{0,1},{-1,0},{0,-1}};
    for(int i=0;i<directs.size();i++){
        int t = curCell->t;
        pair<int,int> direct=directs[i];
        if((x+direct.first>=0)&&(x+direct.first<M)&&(y+direct.second>=0)&&(y+direct.second<N)&&(Map[x+direct.first][y+direct.second].type!=1)){
            int type=Map[x+direct.first][y+direct.second].type;
            if(curCell->t <= 1 && type == 0){
                continue;
            }
            if(type == 2) t = T+1;
            if(!isInVector(closeCell,x+direct.first,y+direct.second,t-1)){
                Search_Cell* addCell = new Search_Cell;
                addCell->x = x+direct.first;
                addCell->y = y+direct.second;
                addCell->t = t-1;
                addCell->g = curCell->g+1;
                addCell->h = Heuristic_Funtion(addCell,end_point);
                addCell->f = curCell;
                reach.push_back(addCell);
            }
        }
    }
    return reach;
    
    
}


void Astar_search(const string input_file, int &step_nums, string &way)
{
    ifstream file(input_file);
    if (!file.is_open()) {
        cout << "Error opening file!" << endl;
        return;
    }

    string line;
    getline(file, line); // 读取第一行
    stringstream ss(line);
    string word;
    vector<string> words;
    while (ss >> word) {
        words.push_back(word);
    }
    int M = stoi(words[0]);
    int N = stoi(words[1]);
    int T = stoi(words[2]);

    pair<int, int> start_point; // 起点
    pair<int, int> end_point;   // 终点
    Map_Cell **Map = new Map_Cell *[M];
    // 加载地图
    for(int i = 0; i < M; i++)
    {
        Map[i] = new Map_Cell[N];
        getline(file, line);
        stringstream ss(line);
        string word;
        vector<string> words;
        while (ss >> word) {
            words.push_back(word);
        }
        for(int j = 0; j < N; j++)
        {
            Map[i][j].type = stoi(words[j]);
            if(Map[i][j].type == 3)
            {
                start_point = {i, j};
            }
            else if(Map[i][j].type == 4)
            {
                end_point = {i, j};
            }
        }
    }
    // 以上为预处理部分
    // ------------------------------------------------------------------

    Search_Cell *search_cell = new Search_Cell;
    search_cell->g = 0;
    search_cell->x = start_point.first;
    search_cell->y = start_point.second;
    search_cell->h = Heuristic_Funtion(search_cell , end_point);
    search_cell->f = NULL;
    search_cell->t = T;

    priority_queue<Search_Cell *, vector<Search_Cell *>, CompareF> open_list;
    vector<Search_Cell *> close_list;
    open_list.push(search_cell);
    int flag=0;
    while(!open_list.empty())
    {
        // TODO: A*搜索过程实现
        Search_Cell* curCell = open_list.top();
        if((curCell->x == end_point.first)&&(curCell->y == end_point.second)){
            flag = 1;
            break;
        }
        else{
            open_list.pop();
            close_list.push_back(curCell);
            vector<Search_Cell*> reach= cellCanReach(curCell,Map,M,N,T,close_list,end_point);
            for(int i=0;i<reach.size();i++){
                Search_Cell* tmp;
                Search_Cell*  tarCell= reach[i];
                if(!(tmp=isInPriorityQueue(open_list,reach[i]))){
                    open_list.push(tarCell);
                }
                else{
                    if(tmp->g > reach[i]->g){
                        tmp->g = reach[i]->g;
                        tmp->f = curCell;
                        delete tarCell;
                    }
                }
            }
        }



    }

    // ------------------------------------------------------------------
    // TODO: 填充step_nums与way
    step_nums = -1;
    way = "";
    if(flag){
        step_nums = 0;
        Search_Cell* curCell = open_list.top();
        while(!((curCell->x == start_point.first)&&(curCell->y == start_point.second))){
            Search_Cell* f = curCell->f;
            map<pair<int,int>,char> direct = {{{1,0},'D'},{{0,1},'R'},{{-1,0},'U'},{{0,-1},'L'}};
            way= string(1,direct[{curCell->x-f->x,curCell->y-f->y}])+way;
            step_nums++;
            curCell = f;
        }
    }

    // ----------------------------------------------------------------
    // 释放动态内存
    for(int i = 0; i < M; i++)
    {
        delete[] Map[i];
    }
    delete[] Map;
    while(!open_list.empty())
    {
        auto temp = open_list.top();
        delete[] temp;
        open_list.pop();
    }
    for(int i = 0; i < close_list.size(); i++)
    {
        delete[] close_list[i];
    }

    return;
}

void output(const string output_file, int &step_nums, string &way)
{
    ofstream file(output_file);
    if(file.is_open())
    {
        file << step_nums << endl;
        if(step_nums >= 0)
        {
            file << way << endl;
        }

        file.close();
    }
    else
    {
        cerr << "Can not open file: " << output_file << endl;
    }
    return;
}

int main(int argc, char *argv[])
{
    string input_base = "../input/input_";
    string output_base = "../output/output_";
    // input_0为讲义样例，此处不做测试
    for(int i = 0; i < 11; i++)
    {
        int step_nums = -1;
        string way = "";
        Astar_search(input_base + to_string(i) + ".txt", step_nums, way);
        output(output_base + to_string(i) + ".txt", step_nums, way);
    }
    return 0;
}