#include <QObject>

class Counter : public QObject {
    Q_OBJECT
    Q_PROPERTY(int count READ count NOTIFY countChanged)
private:
    int m_count = 0;
public:
    int count();
    Q_INVOKABLE void incrementCount();
    Q_INVOKABLE void resetCount();
signals:
    void countChanged();
};
// counter.cpp
int Counter::count() {
    return m_count;
}

void Counter::incrementCount() {
    m_count++;
    emit countChanged();
}

void Counter::resetCount() {
    m_count = 0;
    emit countChanged();
}
