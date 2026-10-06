.class public Lne/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lne/c$c;,
        Lne/c$e;,
        Lne/c$d;
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

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lne/c$d;

.field private h:Lne/c$e;

.field private i:Landroid/view/View;

.field private j:Lmiuix/popupwidget/widget/DropDownPopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lne/c;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lne/c;)Lne/c$d;
    .locals 0

    iget-object p0, p0, Lne/c;->g:Lne/c$d;

    return-object p0
.end method

.method static synthetic b(Lne/c;)V
    .locals 0

    invoke-direct {p0}, Lne/c;->j()V

    return-void
.end method

.method static synthetic c(Lne/c;I)I
    .locals 0

    iput p1, p0, Lne/c;->c:I

    return p1
.end method

.method static synthetic d(Lne/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lne/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic e(Lne/c;)Lne/c$e;
    .locals 0

    iget-object p0, p0, Lne/c;->h:Lne/c$e;

    return-object p0
.end method

.method static synthetic f(Lne/c;)I
    .locals 0

    iget p0, p0, Lne/c;->d:I

    return p0
.end method

.method private j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    return-void
.end method


# virtual methods
.method public g()V
    .locals 1

    iget-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lne/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lne/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public k(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lne/c;->i:Landroid/view/View;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lne/c;->f:Ljava/lang/String;

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lne/c;->b:Ljava/util/List;

    return-void
.end method

.method public n(Lne/c$e;)V
    .locals 0

    iput-object p1, p0, Lne/c;->h:Lne/c$e;

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lne/c;->e:Ljava/lang/String;

    return-void
.end method

.method public onAnimationUpdate(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lne/c;->g:Lne/c$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lne/c$d;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public p(I)V
    .locals 0

    iput p1, p0, Lne/c;->d:I

    return-void
.end method

.method public q()V
    .locals 4

    iget-object v0, p0, Lne/c;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lne/c;->i:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lne/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    new-instance v1, Lne/c$a;

    invoke-direct {v1, p0}, Lne/c$a;-><init>(Lne/c;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V

    iget-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lne/c;->a:Landroid/content/Context;

    const v3, 0x7f121214

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lne/c$c;

    iget-object v3, p0, Lne/c;->a:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v1}, Lne/c$c;-><init>(Lne/c;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lne/c$b;

    invoke-direct {v1, p0}, Lne/c$b;-><init>(Lne/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget v2, p0, Lne/c;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lne/c;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lne/c;->j:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->show()V

    :cond_1
    :goto_0
    return-void
.end method
