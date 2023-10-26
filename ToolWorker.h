#ifndef TOOLWORKER_H
#define TOOLWORKER_H

#include <QObject>

class ToolWorker : public QObject
{
    Q_OBJECT

public:
    static ToolWorker &GetInstance();

private:
    ToolWorker();
    ~ToolWorker();

    ToolWorker(const ToolWorker &) = delete;
    ToolWorker(const ToolWorker &&) = delete;
    ToolWorker &operator=(const ToolWorker &) = delete;

signals:
    void sigAddIndex(int val);

public slots:
};

#endif // TOOLWORKER_H
