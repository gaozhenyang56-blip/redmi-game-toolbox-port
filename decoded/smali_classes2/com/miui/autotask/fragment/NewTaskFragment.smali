.class public Lcom/miui/autotask/fragment/NewTaskFragment;
.super Lmiuix/preference/PreferenceFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/autotask/fragment/NewTaskFragment$d;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/autotask/view/RecyclerViewPreference;

.field private b:Lcom/miui/autotask/view/RecyclerViewPreference;

.field private c:Lcom/miui/autotask/view/RecyclerViewPreference;

.field private d:Lcom/miui/autotask/view/TextEditPreference;

.field private e:I

.field private f:I

.field private g:Lcom/miui/autotask/bean/r;

.field private h:Landroid/view/View;

.field private i:Lcom/google/gson/Gson;

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroidx/preference/CheckBoxPreference;

.field private n:Landroidx/preference/CheckBoxPreference;

.field private o:Landroidx/preference/CheckBoxPreference;

.field private p:Landroidx/preference/CheckBoxPreference;

.field private q:Landroidx/preference/PreferenceCategory;

.field private r:Z

.field private s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/preference/PreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->r:Z

    new-instance v0, Lv3/y1;

    invoke-direct {v0, p0}, Lv3/y1;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public static synthetic a0(Lcom/miui/autotask/fragment/NewTaskFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->r0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b0(Lcom/miui/autotask/fragment/NewTaskFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->t0(I)V

    return-void
.end method

.method public static synthetic c0(Lcom/miui/autotask/fragment/NewTaskFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->q0(I)V

    return-void
.end method

.method public static synthetic d0(Lcom/miui/autotask/fragment/NewTaskFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->p0()V

    return-void
.end method

.method public static synthetic e0(Lcom/miui/autotask/fragment/NewTaskFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->s0(I)V

    return-void
.end method

.method static synthetic f0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    return-object p0
.end method

.method static synthetic g0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    return-object p0
.end method

.method static synthetic h0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;
    .locals 0

    iget-object p0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    return-object p0
.end method

.method private i0(Lcom/miui/autotask/bean/r;)V
    .locals 1

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu3/c;->X(Lcom/miui/autotask/bean/r;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/ai/service/OperationListCollectService;->u(Landroid/content/Context;Ljava/io/Serializable;)V

    return-void
.end method

.method private k0()V
    .locals 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/autotask/activity/NewTaskActivity;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->e:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->f:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/activity/NewTaskActivity;

    invoke-virtual {v1, v0}, Lcom/miui/autotask/activity/NewTaskActivity;->m0(Z)V

    return-void
.end method

.method private l0(Lcom/miui/autotask/bean/r;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/autotask/bean/r;",
            "Ljava/util/List<",
            "Lcom/miui/autotask/taskitem/TaskItem;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ly3/a;->o(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/taskitem/TaskItem;

    instance-of v3, v1, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    if-eqz v3, :cond_1

    check-cast v1, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/taskitem/TaskItem;

    instance-of v3, v0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    if-eqz v3, :cond_4

    move-object v2, v0

    check-cast v2, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    :cond_5
    if-nez v2, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu3/c;->h0(Ljava/lang/String;)V

    return-void

    :cond_6
    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    return-void

    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lu3/c;->h0(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miui/autotask/bean/r;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lu3/c;->p(Ljava/lang/String;)V

    return-void
.end method

.method private m0()V
    .locals 11

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->m:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->o:Landroidx/preference/CheckBoxPreference;

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->k:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->l:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/miui/autotask/view/TextEditPreference;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->a()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v3}, Lcom/miui/autotask/bean/r;->e()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/autotask/taskitem/TaskItem;

    iget-object v7, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->k:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    invoke-virtual {v9, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/autotask/taskitem/TaskItem;

    iget-object v7, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v6}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    invoke-virtual {v9, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    move v6, v4

    :goto_3
    if-ge v6, v5, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/autotask/taskitem/TaskItem;

    iget-object v8, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    invoke-virtual {v10, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v6, v0, v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->C(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, v2, v4}, Lcom/miui/autotask/view/RecyclerViewPreference;->C(Ljava/util/List;Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, v3, v4}, Lcom/miui/autotask/view/RecyclerViewPreference;->C(Ljava/util/List;Z)V

    invoke-direct {p0, v5}, Lcom/miui/autotask/fragment/NewTaskFragment;->x0(I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    goto :goto_4

    :cond_4
    move v1, v4

    :goto_4
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->q:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->o:Landroidx/preference/CheckBoxPreference;

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->q()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->p:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->q()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_5
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->e:I

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/r;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->f:I

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->m:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->g()I

    move-result v1

    invoke-static {v1}, La4/f2;->b(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->n:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->g()I

    move-result v1

    invoke-static {v1}, La4/f2;->a(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->o:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/r;->g()I

    move-result v1

    invoke-static {v1}, La4/f2;->c(I)Z

    move-result v1

    goto/16 :goto_0
.end method

.method private n0(Lcom/miui/autotask/bean/r;)V
    .locals 1

    invoke-static {}, Lu3/c;->U()Lu3/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu3/c;->l0(Lcom/miui/autotask/bean/r;)V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/miui/ai/service/OperationListCollectService;->U(Landroid/content/Context;Ljava/io/Serializable;)V

    return-void
.end method

.method private o0()I
    .locals 4

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->m:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->o:Landroidx/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_3

    if-eqz v1, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    const/4 v0, 0x2

    return v0

    :cond_3
    if-eqz v1, :cond_4

    const/4 v0, 0x4

    return v0

    :cond_4
    return v2
.end method

.method private synthetic p0()V
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->h:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->h:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v0

    int-to-double v2, v0

    int-to-double v0, v1

    const-wide v4, 0x3fc3333333333333L    # 0.15

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->r:Z

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/autotask/view/TextEditPreference;->k()V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->r:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->r:Z

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/miui/autotask/view/TextEditPreference;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method private synthetic q0(I)V
    .locals 3

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->q:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/autotask/fragment/NewTaskFragment;->x0(I)V

    return-void
.end method

.method private synthetic r0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->z(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic s0(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->e:I

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->k0()V

    return-void
.end method

.method private synthetic t0(I)V
    .locals 0

    iput p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->f:I

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->k0()V

    return-void
.end method

.method public static u0(Lcom/miui/autotask/bean/r;Z)Lcom/miui/autotask/fragment/NewTaskFragment;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "taskBean"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "taskCanEdit"

    invoke-virtual {v0, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p0, Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;-><init>()V

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method private x0(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->p:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-le p1, v1, :cond_0

    const p1, 0x7f120359

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public j0()Z
    .locals 1

    iget v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->e:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference;->y(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    :goto_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/miui/autotask/view/RecyclerViewPreference;->y(IILandroid/content/Intent;)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "taskBean"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/bean/r;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    :cond_0
    const p1, 0x7f150003

    invoke-virtual {p0, p1, p2}, Landroidx/preference/PreferenceFragmentCompat;->setPreferencesFromResource(ILjava/lang/String;)V

    const-string p1, "key_condition_list"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/view/RecyclerViewPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    const-string p1, "key_result_list"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/view/RecyclerViewPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    const-string p1, "key_exit_condition_list"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/view/RecyclerViewPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    const-string p1, "key_title"

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/miui/autotask/view/TextEditPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    const p1, 0x7f1203c7

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f1207f7

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f120809

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f121619

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1207f9

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->m:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->n:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->o:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->q:Landroidx/preference/PreferenceCategory;

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->B(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->B(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->B(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->D(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->E(Z)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    new-instance p2, Lv3/z1;

    invoke-direct {p2, p0}, Lv3/z1;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->I(Lcom/miui/autotask/view/RecyclerViewPreference$d;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    new-instance p2, Lv3/a2;

    invoke-direct {p2, p0}, Lv3/a2;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->G(Lcom/miui/autotask/view/RecyclerViewPreference$b;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    new-instance p2, Lcom/miui/autotask/fragment/NewTaskFragment$a;

    invoke-direct {p2, p0}, Lcom/miui/autotask/fragment/NewTaskFragment$a;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->H(Lcom/miui/autotask/view/RecyclerViewPreference$c;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    new-instance p2, Lcom/miui/autotask/fragment/NewTaskFragment$b;

    invoke-direct {p2, p0}, Lcom/miui/autotask/fragment/NewTaskFragment$b;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->H(Lcom/miui/autotask/view/RecyclerViewPreference$c;)V

    new-instance p1, Lcom/miui/autotask/fragment/NewTaskFragment$c;

    invoke-direct {p1, p0}, Lcom/miui/autotask/fragment/NewTaskFragment$c;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {p2, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->J(Lcom/miui/autotask/fragment/NewTaskFragment$d;)V

    iget-object p2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {p2, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->J(Lcom/miui/autotask/fragment/NewTaskFragment$d;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    new-instance p2, Lv3/b2;

    invoke-direct {p2, p0}, Lv3/b2;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->I(Lcom/miui/autotask/view/RecyclerViewPreference$d;)V

    iget-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    new-instance p2, Lv3/c2;

    invoke-direct {p2, p0}, Lv3/c2;-><init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/miui/autotask/view/RecyclerViewPreference;->I(Lcom/miui/autotask/view/RecyclerViewPreference$d;)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->m0()V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->k0()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->h:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->h:Landroid/view/View;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->h:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->h:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->s:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public v0()Z
    .locals 7

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    invoke-virtual {v0}, Lcom/miui/autotask/view/TextEditPreference;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->f:I

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->e:I

    if-lez v0, :cond_e

    return v1

    :cond_2
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    invoke-virtual {v0}, Lcom/miui/autotask/view/TextEditPreference;->g()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->m()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    :cond_3
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/r;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v2, v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->k:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    move v3, v1

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->k:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    return v1

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v2, v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    move v3, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    invoke-virtual {v6, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->j:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v5, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    return v1

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v2, v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-eq v2, v3, :cond_a

    return v1

    :cond_a
    move v2, v1

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->i:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->l:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    return v1

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->o0()I

    move-result v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->g()I

    move-result v2

    if-eq v0, v2, :cond_d

    return v1

    :cond_d
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->q()Z

    move-result v2

    if-eq v0, v2, :cond_e

    return v1

    :cond_e
    const/4 v0, 0x1

    return v0
.end method

.method public w0()V
    .locals 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->v0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->d:Lcom/miui/autotask/view/TextEditPreference;

    invoke-virtual {v0}, Lcom/miui/autotask/view/TextEditPreference;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f120081

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v2, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    const/4 v3, 0x1

    if-nez v2, :cond_3

    new-instance v2, Lcom/miui/autotask/bean/r;

    invoke-direct {v2}, Lcom/miui/autotask/bean/r;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/miui/autotask/bean/r;->H(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/miui/autotask/bean/r;->x(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->n()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/r;->G(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/miui/autotask/fragment/NewTaskFragment;->o0()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/r;->C(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, v4}, Lcom/miui/autotask/view/RecyclerViewPreference;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/r;->v(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->b:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, v4}, Lcom/miui/autotask/view/RecyclerViewPreference;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/r;->u(Ljava/util/List;)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->c:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v0, v4}, Lcom/miui/autotask/view/RecyclerViewPreference;->r(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/miui/autotask/bean/r;->A(Ljava/util/List;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v4}, Lcom/miui/autotask/taskitem/TaskItem;->k()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v3

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->p:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    move v1, v3

    :cond_6
    invoke-virtual {v2, v1}, Lcom/miui/autotask/bean/r;->z(Z)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment;->g:Lcom/miui/autotask/bean/r;

    if-nez v0, :cond_7

    invoke-direct {p0, v2}, Lcom/miui/autotask/fragment/NewTaskFragment;->i0(Lcom/miui/autotask/bean/r;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v2}, Lcom/miui/autotask/bean/r;->b()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->l0(Lcom/miui/autotask/bean/r;Ljava/util/List;)V

    invoke-direct {p0, v2}, Lcom/miui/autotask/fragment/NewTaskFragment;->n0(Lcom/miui/autotask/bean/r;)V

    :goto_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "taskBean"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_0
.end method
