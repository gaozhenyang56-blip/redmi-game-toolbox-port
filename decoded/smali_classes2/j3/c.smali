.class public Lj3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj3/c$e;,
        Lj3/c$c;,
        Lj3/c$d;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lj3/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:I

.field private d:Lj3/c$d;

.field private e:Landroid/view/View;

.field private f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj3/c;->a:Landroid/content/Context;

    invoke-static {}, Lx4/t;->h()I

    move-result p1

    iput p1, p0, Lj3/c;->g:I

    return-void
.end method

.method static synthetic a(Lj3/c;)Lj3/c$d;
    .locals 0

    iget-object p0, p0, Lj3/c;->d:Lj3/c$d;

    return-object p0
.end method

.method static synthetic b(Lj3/c;)V
    .locals 0

    invoke-direct {p0}, Lj3/c;->k()V

    return-void
.end method

.method static synthetic c(Lj3/c;)I
    .locals 0

    iget p0, p0, Lj3/c;->c:I

    return p0
.end method

.method static synthetic d(Lj3/c;I)I
    .locals 0

    iput p1, p0, Lj3/c;->c:I

    return p1
.end method

.method static synthetic e(Lj3/c;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lj3/c;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic f(Lj3/c;)I
    .locals 0

    iget p0, p0, Lj3/c;->g:I

    return p0
.end method

.method static synthetic g(Lj3/c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lj3/c;->b:Ljava/util/List;

    return-object p0
.end method

.method private k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    return-void
.end method


# virtual methods
.method public h()V
    .locals 1

    iget-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lj3/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lj3/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lj3/c;->c:I

    return v0
.end method

.method public l(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lj3/c;->e:Landroid/view/View;

    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lj3/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lj3/c;->b:Ljava/util/List;

    return-void
.end method

.method public n(Lj3/c$d;)V
    .locals 0

    iput-object p1, p0, Lj3/c;->d:Lj3/c$d;

    return-void
.end method

.method public o(I)V
    .locals 0

    iput p1, p0, Lj3/c;->c:I

    return-void
.end method

.method public onAnimationUpdate(Landroid/view/View;F)V
    .locals 0

    return-void
.end method

.method public onDismiss()V
    .locals 1

    iget-object v0, p0, Lj3/c;->d:Lj3/c$d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lj3/c$d;->onDismiss()V

    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lj3/c;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lj3/c;->e:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    if-nez v0, :cond_1

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lj3/c;->a:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmiuix/popupwidget/widget/DropDownPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    new-instance v1, Lj3/c$a;

    invoke-direct {v1, p0}, Lj3/c$a;-><init>(Lj3/c;)V

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setContainerController(Lmiuix/popupwidget/widget/DropDownPopupWindow$ContainerController;)V

    iget-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-virtual {v0, p0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setDropDownController(Lmiuix/popupwidget/widget/DropDownPopupWindow$Controller;)V

    new-instance v0, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;

    iget-object v1, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    invoke-direct {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;-><init>(Lmiuix/popupwidget/widget/DropDownPopupWindow;)V

    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow$ListController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lj3/c$c;

    iget-object v2, p0, Lj3/c;->a:Landroid/content/Context;

    iget-object v3, p0, Lj3/c;->b:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lj3/c$c;-><init>(Lj3/c;Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v1, Lj3/c$b;

    invoke-direct {v1, p0}, Lj3/c$b;-><init>(Lj3/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget v2, p0, Lj3/c;->c:I

    invoke-virtual {v0, v2, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    iget-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    iget-object v1, p0, Lj3/c;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->setAnchor(Landroid/view/View;)V

    iget-object v0, p0, Lj3/c;->f:Lmiuix/popupwidget/widget/DropDownPopupWindow;

    :cond_1
    invoke-virtual {v0}, Lmiuix/popupwidget/widget/DropDownPopupWindow;->show()V

    :cond_2
    :goto_0
    return-void
.end method
