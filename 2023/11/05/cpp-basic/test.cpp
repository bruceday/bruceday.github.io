class Base
{
public:
    virtual void Show() {}
};

class Child1 : public Base
{
public:
    void Show() {}
};

int main()
{
    Base base;
    Child1 child1;
    base.Show();
    child1.Show();
    return 0;
}