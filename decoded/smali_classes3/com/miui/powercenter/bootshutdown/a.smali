.class public Lcom/miui/powercenter/bootshutdown/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/bootshutdown/a$e;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lcom/miui/powercenter/bootshutdown/a$e;

.field private e:Landroid/view/View;

.field private f:Lmiuix/popupwidget/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/miui/powercenter/bootshutdown/a;)Lcom/miui/powercenter/bootshutdown/a$e;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/bootshutdown/a;->d:Lcom/miui/powercenter/bootshutdown/a$e;

    return-object p0
.end method

.method static synthetic b(Lcom/miui/powercenter/bootshutdown/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/bootshutdown/a;->e()V

    return-void
.end method

.method static synthetic c(Lcom/miui/powercenter/bootshutdown/a;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/a;->c:I

    return p1
.end method

.method private e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    return-void
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/bootshutdown/a$d;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/bootshutdown/a$d;-><init>(Lcom/miui/powercenter/bootshutdown/a;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public g(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a;->e:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/bootshutdown/a;->f(Landroid/view/View;)V

    return-void
.end method

.method public h([Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a;->b:Ljava/util/List;

    return-void
.end method

.method public i(Lcom/miui/powercenter/bootshutdown/a$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bootshutdown/a;->d:Lcom/miui/powercenter/bootshutdown/a$e;

    return-void
.end method

.method public j(I)V
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/bootshutdown/a;->c:I

    return-void
.end method

.method public k()V
    .locals 5

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    new-instance v1, Lcom/miui/powercenter/bootshutdown/a$a;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/bootshutdown/a$a;-><init>(Lcom/miui/powercenter/bootshutdown/a;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/bootshutdown/a$b;

    iget-object v2, p0, Lcom/miui/powercenter/bootshutdown/a;->a:Landroid/content/Context;

    const v3, 0x7f0e0334

    iget-object v4, p0, Lcom/miui/powercenter/bootshutdown/a;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/miui/powercenter/bootshutdown/a$b;-><init>(Lcom/miui/powercenter/bootshutdown/a;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lcom/miui/powercenter/bootshutdown/a$c;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/bootshutdown/a$c;-><init>(Lcom/miui/powercenter/bootshutdown/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget v2, p0, Lcom/miui/powercenter/bootshutdown/a;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lcom/miui/powercenter/bootshutdown/a;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bootshutdown/a;->d:Lcom/miui/powercenter/bootshutdown/a$e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/miui/powercenter/bootshutdown/a$e;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method
