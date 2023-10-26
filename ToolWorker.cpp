#include "ToolWorker.h"

ToolWorker &ToolWorker::GetInstance()
{
    static ToolWorker myTool;
    return myTool;
}

ToolWorker::ToolWorker()
{

}

ToolWorker::~ToolWorker()
{

}
