.class Lcom/miui/autotask/view/RecyclerViewPreference$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr3/q$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/view/RecyclerViewPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/view/RecyclerViewPreference;


# direct methods
.method constructor <init>(Lcom/miui/autotask/view/RecyclerViewPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->l(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/view/RecyclerViewPreference$b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->l(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/view/RecyclerViewPreference$b;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->d(Lcom/miui/autotask/view/RecyclerViewPreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v1}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/miui/autotask/view/RecyclerViewPreference$b;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->d(Lcom/miui/autotask/view/RecyclerViewPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->d(Lcom/miui/autotask/view/RecyclerViewPreference;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->m(Lcom/miui/autotask/view/RecyclerViewPreference;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1, v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->n(Lcom/miui/autotask/view/RecyclerViewPreference;Z)V

    :cond_1
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->k(Lcom/miui/autotask/view/RecyclerViewPreference;)Lr3/q;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->f(Lcom/miui/autotask/view/RecyclerViewPreference;)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 6

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->d(Lcom/miui/autotask/view/RecyclerViewPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/autotask/taskitem/TaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "key_condition_list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "key_result_list"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->h(Lcom/miui/autotask/view/RecyclerViewPreference;I)I

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La4/f2;->G(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->i(Lcom/miui/autotask/view/RecyclerViewPreference;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/TaskItem;->e()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_battery_condition_item"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1, v2}, Lcom/miui/autotask/view/RecyclerViewPreference;->h(Lcom/miui/autotask/view/RecyclerViewPreference;I)I

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v2}, Lcom/miui/autotask/view/RecyclerViewPreference;->j(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/view/RecyclerViewPreference$c;

    move-result-object v2

    invoke-static {v1, v0, v2, p1}, La4/e2;->E0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    :cond_0
    return-void

    :cond_1
    instance-of v1, v0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    const/16 v3, 0x68

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/CustomTimeConditionItem;

    invoke-static {p1, v0, v3}, Lcom/miui/autotask/activity/AddTimeConditionActivity;->l0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/CustomTimeConditionItem;I)V

    goto/16 :goto_1

    :cond_2
    instance-of v1, v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    invoke-static {p1, v0, v3}, Lcom/miui/autotask/activity/SelectAppActivity;->u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V

    goto/16 :goto_1

    :cond_3
    instance-of v1, v0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    const/4 v4, 0x1

    if-eqz v1, :cond_4

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/BluetoothConnectDeviceConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->I0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_4
    instance-of v1, v0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    const/4 v5, 0x0

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/BluetoothDisconnectDeviceConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/BluetoothDeviceConditionItem;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v5}, Lcom/miui/autotask/activity/BluetoothSelectActivity;->I0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_5
    instance-of v1, v0, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;

    if-eqz v1, :cond_6

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/WlanConnectSpecifiedConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v4}, Lcom/miui/autotask/activity/WlanSelectActivity;->J0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_6
    instance-of v1, v0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    if-eqz v1, :cond_7

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/WlanDisconnectSpecifiedConditionItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/WlanSpecifiedConditionItem;->v()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v3, v5}, Lcom/miui/autotask/activity/WlanSelectActivity;->J0(Landroid/app/Activity;Ljava/lang/String;IZ)V

    goto/16 :goto_1

    :cond_7
    instance-of v1, v0, Lcom/miui/autotask/taskitem/AddressTaskItem;

    if-eqz v1, :cond_8

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-static {p1, v0, v3}, Lcom/miui/autotask/activity/AddressSelectActivity;->D0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/AddressTaskItem;I)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1, v2}, Lcom/miui/autotask/view/RecyclerViewPreference;->h(Lcom/miui/autotask/view/RecyclerViewPreference;I)I

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v2}, Lcom/miui/autotask/view/RecyclerViewPreference;->j(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/view/RecyclerViewPreference$c;

    move-result-object v2

    invoke-static {v1, v0, v2, p1}, La4/e2;->E0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Lcom/miui/autotask/view/RecyclerViewPreference$c;I)V

    goto :goto_1

    :cond_9
    instance-of v1, v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    if-eqz v1, :cond_a

    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    check-cast v0, Lcom/miui/autotask/taskitem/LunchAppItem;

    const/16 v1, 0x69

    invoke-static {p1, v0, v1}, Lcom/miui/autotask/activity/SelectAppActivity;->u0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/LunchAppItem;I)V

    goto :goto_1

    :cond_a
    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1, v2}, Lcom/miui/autotask/view/RecyclerViewPreference;->h(Lcom/miui/autotask/view/RecyclerViewPreference;I)I

    iget-object v1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v2}, Lcom/miui/autotask/view/RecyclerViewPreference;->k(Lcom/miui/autotask/view/RecyclerViewPreference;)Lr3/q;

    move-result-object v2

    invoke-static {v1, v0, v2, p1}, La4/e2;->F0(Landroid/content/Context;Lcom/miui/autotask/taskitem/TaskItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V

    goto :goto_1

    :cond_b
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->g(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/fragment/NewTaskFragment$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autotask/fragment/NewTaskFragment$d;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La4/f2;->K(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x67

    const-class v2, Lcom/miui/autotask/activity/AddResultActivity;

    goto :goto_0

    :cond_c
    iget-object p1, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->e(Lcom/miui/autotask/view/RecyclerViewPreference;)Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/autotask/view/RecyclerViewPreference$a;->a:Lcom/miui/autotask/view/RecyclerViewPreference;

    invoke-static {v0}, Lcom/miui/autotask/view/RecyclerViewPreference;->g(Lcom/miui/autotask/view/RecyclerViewPreference;)Lcom/miui/autotask/fragment/NewTaskFragment$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/autotask/fragment/NewTaskFragment$d;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, La4/f2;->K(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x66

    const-class v2, Lcom/miui/autotask/activity/AddConditionActivity;

    :goto_0
    invoke-static {p1, v0, v1, v2}, Lcom/miui/autotask/activity/AddBaseActivity;->e0(Landroid/app/Activity;Ljava/util/ArrayList;ILjava/lang/Class;)V

    :goto_1
    return-void
.end method
