.class Lcom/miui/autotask/activity/BaseSelectActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/z$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/activity/BaseSelectActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/activity/BaseSelectActivity;


# direct methods
.method constructor <init>(Lcom/miui/autotask/activity/BaseSelectActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/activity/BaseSelectActivity$a;->a:Lcom/miui/autotask/activity/BaseSelectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lcom/miui/autotask/activity/BaseSelectActivity$a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/BaseSelectActivity$a;->c(I)V

    return-void
.end method

.method private synthetic c(I)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity$a;->a:Lcom/miui/autotask/activity/BaseSelectActivity;

    iget-object v0, v0, Lcom/miui/autotask/activity/BaseSelectActivity;->d:Lr3/z;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity$a;->a:Lcom/miui/autotask/activity/BaseSelectActivity;

    invoke-static {v0, p2, p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->l0(Lcom/miui/autotask/activity/BaseSelectActivity;ZI)V

    return-void
.end method

.method public onClick(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity$a;->a:Lcom/miui/autotask/activity/BaseSelectActivity;

    iget-object v0, v0, Lcom/miui/autotask/activity/BaseSelectActivity;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/n;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/n;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/miui/autotask/activity/BaseSelectActivity$a;->a:Lcom/miui/autotask/activity/BaseSelectActivity;

    invoke-static {v1, v0, p1}, Lcom/miui/autotask/activity/BaseSelectActivity;->l0(Lcom/miui/autotask/activity/BaseSelectActivity;ZI)V

    iget-object v0, p0, Lcom/miui/autotask/activity/BaseSelectActivity$a;->a:Lcom/miui/autotask/activity/BaseSelectActivity;

    iget-object v0, v0, Lcom/miui/autotask/activity/BaseSelectActivity;->f:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/miui/autotask/activity/l;

    invoke-direct {v1, p0, p1}, Lcom/miui/autotask/activity/l;-><init>(Lcom/miui/autotask/activity/BaseSelectActivity$a;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
