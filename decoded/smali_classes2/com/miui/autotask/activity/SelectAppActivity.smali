.class public Lcom/miui/autotask/activity/SelectAppActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/activity/SelectAppActivity$d;
    }
.end annotation


# instance fields
.field private d:Lr3/u;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/autotask/bean/AppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/autotask/bean/AppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lmiuix/recyclerview/widget/RecyclerView;

.field private h:Lcom/miui/autotask/taskitem/LunchAppItem;

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/miui/autotask/bean/AppInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Landroid/widget/TextView;

.field private l:Landroid/view/View;

.field private m:Lmiuix/view/l$b;

.field private n:Landroid/text/TextWatcher;

.field private o:Lr3/u$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    new-instance v0, Lcom/miui/autotask/activity/SelectAppActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/SelectAppActivity$a;-><init>(Lcom/miui/autotask/activity/SelectAppActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->m:Lmiuix/view/l$b;

    new-instance v0, Lcom/miui/autotask/activity/SelectAppActivity$b;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/SelectAppActivity$b;-><init>(Lcom/miui/autotask/activity/SelectAppActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->n:Landroid/text/TextWatcher;

    new-instance v0, Lcom/miui/autotask/activity/SelectAppActivity$c;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/SelectAppActivity$c;-><init>(Lcom/miui/autotask/activity/SelectAppActivity;)V

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->o:Lr3/u$a;

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/activity/SelectAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SelectAppActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/activity/SelectAppActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SelectAppActivity;->r0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic k0(Lcom/miui/autotask/activity/SelectAppActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic l0(Lcom/miui/autotask/activity/SelectAppActivity;)Landroid/text/TextWatcher;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->n:Landroid/text/TextWatcher;

    return-object p0
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->m:Lmiuix/view/l$b;

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method static synthetic m0(Lcom/miui/autotask/activity/SelectAppActivity;)Lr3/u;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->d:Lr3/u;

    return-object p0
.end method

.method static synthetic n0(Lcom/miui/autotask/activity/SelectAppActivity;)Lcom/miui/autotask/taskitem/LunchAppItem;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    return-object p0
.end method

.method static synthetic o0(Lcom/miui/autotask/activity/SelectAppActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/SelectAppActivity;->t0(Ljava/util/List;)V

    return-void
.end method

.method static synthetic p0(Lcom/miui/autotask/activity/SelectAppActivity;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/autotask/activity/SelectAppActivity;->v0(ZI)V

    return-void
.end method

.method private q0()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/bean/AppInfoBean;

    invoke-virtual {v4}, Lcom/miui/autotask/bean/AppInfoBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Lcom/miui/autotask/bean/AppInfoBean;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/autotask/taskitem/LunchAppItem;->C(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-virtual {v3, v4}, Lcom/miui/autotask/taskitem/LunchAppItem;->E(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-virtual {v3, v1}, Lcom/miui/autotask/taskitem/LunchAppItem;->D(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-virtual {v1, v2}, Lcom/miui/autotask/taskitem/LunchAppItem;->F(Ljava/util/List;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    const-string v2, "taskItem"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private synthetic r0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/autotask/activity/SelectAppActivity;->q0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private s0()V
    .locals 2

    new-instance v0, Lcom/miui/autotask/activity/SelectAppActivity$d;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/SelectAppActivity$d;-><init>(Lcom/miui/autotask/activity/SelectAppActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private t0(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/autotask/bean/AppInfoBean;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/AppInfoBean;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/AppInfoBean;->isSelect()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->d:Lr3/u;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f100127

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/autotask/activity/SelectAppActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private v0(ZI)V
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/AppInfoBean;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/bean/AppInfoBean;->setSelect(Z)V

    iget-boolean v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/AppInfoBean;

    iget-object v2, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p2, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/miui/autotask/bean/AppInfoBean;->setSelect(Z)V

    const/4 v1, -0x1

    if-eq v2, v1, :cond_0

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->d:Lr3/u;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/bean/AppInfoBean;

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->d:Lr3/u;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyItemChanged(I)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {p2}, Ljava/util/HashSet;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/autotask/activity/r;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/r;-><init>(Lcom/miui/autotask/activity/SelectAppActivity;)V

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "key_leave_activity_condition_item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "key_start_activity_condition_item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0

    :sswitch_2
    const-string v3, "key_start_activity_result_item"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    iput-boolean v4, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    const v0, 0x7f121a10

    goto :goto_1

    :pswitch_1
    iput-boolean v4, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    const v0, 0x7f121610

    :goto_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :pswitch_2
    const v0, 0x7f121a5d

    goto :goto_1

    :goto_2
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5857f99e -> :sswitch_2
        -0x3586c3d6 -> :sswitch_1
        -0x2a64a881 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected f0()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v1, v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    check-cast v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->h:Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/autotask/activity/SelectAppActivity;->e0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {p0}, Lcom/miui/autotask/activity/SelectAppActivity;->e0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b00f6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->l:Landroid/view/View;

    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->l:Landroid/view/View;

    const v1, 0x1020009

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->l:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/q;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/q;-><init>(Lcom/miui/autotask/activity/SelectAppActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p1, :cond_3

    const-string v0, "enableSelect"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    const-string v0, "allData"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->f:Ljava/util/ArrayList;

    const-string v0, "searchHint"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->k:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    :cond_2
    const-string v0, "selectMap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/miui/autotask/activity/SelectAppActivity;->s0()V

    :cond_4
    :goto_0
    new-instance p1, Lr3/u;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->o:Lr3/u$a;

    iget-boolean v2, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    invoke-direct {p1, v0, v1, v2}, Lr3/u;-><init>(Ljava/util/List;Lr3/u$a;Z)V

    iput-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->d:Lr3/u;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$h;)V

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    new-instance v0, Lt3/d;

    const/4 v1, 0x0

    new-array v2, v1, [I

    invoke-direct {v0, p0, v2}, Lt3/d;-><init>(Landroid/content/Context;[I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$m;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->g:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/z;

    if-eqz p1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/z;->V(Z)V

    :cond_5
    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-boolean v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->j:Z

    const-string v1, "enableSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/autotask/activity/SelectAppActivity;->i:Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v1, "selectMap"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->k:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "searchHint"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->e:Ljava/util/ArrayList;

    const-string v1, "data"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/SelectAppActivity;->f:Ljava/util/ArrayList;

    const-string v1, "allData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
