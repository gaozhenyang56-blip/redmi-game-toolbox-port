.class public Lcom/miui/autotask/activity/AddressSelectActivity;
.super Lcom/miui/powercenter/autotask/BaseSettingActivity;
.source "SourceFile"


# instance fields
.field private d:Lcom/miui/autotask/taskitem/AddressTaskItem;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/View;

.field private o:Landroid/view/View;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/view/View;

.field private t:I

.field private u:Landroid/content/SharedPreferences;

.field private v:Lcom/google/gson/Gson;

.field private w:Lcom/miui/autotask/bean/a;

.field private x:Lcom/miui/autotask/bean/a;

.field private y:Lcom/miui/autotask/bean/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/powercenter/autotask/BaseSettingActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->t:I

    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x41d

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->p0(I)V

    return-void
.end method

.method private B0()V
    .locals 7

    const-string v0, "auto_task_tag"

    const-class v1, Lcom/miui/autotask/bean/a;

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f120351

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->l:Landroid/widget/TextView;

    const v3, 0x7f120350

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->q:Landroid/widget/TextView;

    const v3, 0x7f120354

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const-string v2, "autoTaskSp"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->u:Landroid/content/SharedPreferences;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iput-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->v:Lcom/google/gson/Gson;

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->u:Landroid/content/SharedPreferences;

    const-string v3, "homeData"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->u:Landroid/content/SharedPreferences;

    const-string v5, "companyData"

    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->u:Landroid/content/SharedPreferences;

    const-string v6, "otherData"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    iget-object v5, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->v:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/a;

    iput-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v5, "get home data fail"

    invoke-static {v0, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;

    if-nez v2, :cond_0

    new-instance v2, Lcom/miui/autotask/bean/a;

    invoke-direct {v2}, Lcom/miui/autotask/bean/a;-><init>()V

    iput-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->v:Lcom/google/gson/Gson;

    invoke-virtual {v2, v3, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/autotask/bean/a;

    iput-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "get company data fail"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;

    if-nez v2, :cond_1

    new-instance v2, Lcom/miui/autotask/bean/a;

    invoke-direct {v2}, Lcom/miui/autotask/bean/a;-><init>()V

    iput-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;

    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->v:Lcom/google/gson/Gson;

    invoke-virtual {v2, v4, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/autotask/bean/a;

    iput-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    const-string v2, "get other data fail"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/miui/autotask/bean/a;

    invoke-direct {v0}, Lcom/miui/autotask/bean/a;-><init>()V

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;

    :cond_2
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;

    invoke-virtual {v1}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;

    invoke-virtual {v2}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->h:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const v5, 0x7f120353

    if-eqz v4, :cond_3

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    move-object v4, v0

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->m:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->r:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_5

    :cond_5
    move-object v4, v2

    :goto_5
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v3}, Lcom/miui/autotask/taskitem/AddressTaskItem;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    return-void

    :cond_6
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x3ff

    :goto_6
    invoke-direct {p0, v0}, Lcom/miui/autotask/activity/AddressSelectActivity;->p0(I)V

    goto :goto_7

    :cond_7
    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x413

    goto :goto_6

    :cond_8
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x41d

    goto :goto_6

    :cond_9
    :goto_7
    return-void
.end method

.method private C0()V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->i:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/c;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/c;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->n:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/d;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/d;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->s:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/e;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/e;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/f;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/f;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->j:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/g;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/g;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->o:Landroid/view/View;

    new-instance v1, Lcom/miui/autotask/activity/h;

    invoke-direct {v1, p0}, Lcom/miui/autotask/activity/h;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static D0(Landroid/app/Activity;Lcom/miui/autotask/taskitem/AddressTaskItem;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/autotask/activity/AddressSelectActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "taskItem"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic i0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->u0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic j0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic m0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic n0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->z0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o0(Lcom/miui/autotask/activity/AddressSelectActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->v0(Landroid/view/View;)V

    return-void
.end method

.method private p0(I)V
    .locals 11

    iput p1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->t:I

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->e:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->f:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->g:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->h:Landroid/widget/TextView;

    const/4 v6, 0x0

    const/16 v7, 0x3ff

    const/4 v8, 0x1

    if-ne p1, v7, :cond_0

    move v5, v8

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/autotask/activity/AddressSelectActivity;->q0(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->j:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->k:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->l:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->m:Landroid/widget/TextView;

    const/16 v9, 0x413

    if-ne p1, v9, :cond_1

    move v5, v8

    goto :goto_1

    :cond_1
    move v5, v6

    :goto_1
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/autotask/activity/AddressSelectActivity;->q0(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->o:Landroid/view/View;

    iget-object v2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->p:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->q:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->r:Landroid/widget/TextView;

    const/16 v10, 0x41d

    if-ne p1, v10, :cond_2

    move v5, v8

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/autotask/activity/AddressSelectActivity;->q0(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Z)V

    if-eq p1, v7, :cond_4

    if-eq p1, v9, :cond_3

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v0

    move v7, v10

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v0

    move v7, v9

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    xor-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz v0, :cond_5

    invoke-direct {p0, v7}, Lcom/miui/autotask/activity/AddressSelectActivity;->t0(I)V

    :cond_5
    return-void
.end method

.method private q0(Landroid/view/View;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Z)V
    .locals 0

    invoke-virtual {p1, p5}, Landroid/view/View;->setSelected(Z)V

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    const p1, 0x7f060db3

    if-eqz p5, :cond_1

    move p2, p1

    goto :goto_1

    :cond_1
    const p2, 0x7f060db2

    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p5, :cond_2

    goto :goto_2

    :cond_2
    const p1, 0x7f060db1

    :goto_2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private r0()V
    .locals 5

    const v0, 0x7f0b04f7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->e:Landroid/view/View;

    const v1, 0x7f0b052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->e:Landroid/view/View;

    const v2, 0x7f0b0bc9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->e:Landroid/view/View;

    const v3, 0x7f0b0b21

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->e:Landroid/view/View;

    const v4, 0x7f0b0521

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->i:Landroid/view/View;

    const v0, 0x7f0b0271

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->j:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->n:Landroid/view/View;

    const v0, 0x7f0b0844

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->p:Landroid/view/View;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->q:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->o:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->s:Landroid/view/View;

    return-void
.end method

.method private s0()V
    .locals 4

    iget v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->t:I

    const/16 v1, 0x3ff

    if-eq v0, v1, :cond_1

    const/16 v1, 0x413

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;

    :goto_0
    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/taskitem/AddressTaskItem;->z(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/taskitem/AddressTaskItem;->A(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/autotask/taskitem/AddressTaskItem;->D(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->c()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/autotask/taskitem/AddressTaskItem;->B(D)V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/bean/a;->d()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/autotask/taskitem/AddressTaskItem;->C(D)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    const-string v2, "taskItem"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private t0(I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.securityadd"

    const-string v3, "com.miui.auto_task.MapSelectActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lcom/miui/common/base/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "auto_task_tag"

    const-string v0, "SecurityAdd version not supported"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic u0(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/miui/autotask/activity/AddressSelectActivity;->s0()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x3ff

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->t0(I)V

    return-void
.end method

.method private synthetic w0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x413

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->t0(I)V

    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x41d

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->t0(I)V

    return-void
.end method

.method private synthetic y0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x3ff

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->p0(I)V

    return-void
.end method

.method private synthetic z0(Landroid/view/View;)V
    .locals 0

    const/16 p1, 0x413

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->p0(I)V

    return-void
.end method


# virtual methods
.method protected d0()Landroid/view/View$OnClickListener;
    .locals 1

    new-instance v0, Lcom/miui/autotask/activity/b;

    invoke-direct {v0, p0}, Lcom/miui/autotask/activity/b;-><init>(Lcom/miui/autotask/activity/AddressSelectActivity;)V

    return-object v0
.end method

.method protected e0()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected f0()V
    .locals 0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    const-string p2, "latitude"

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v2

    const-string p2, "longitude"

    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v0

    const-string p2, "cityName"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v4, "provinceName"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "addressName"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-class v5, Lcom/miui/autotask/activity/AddressSelectActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "latitude = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", longitude = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, ", cityName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", provinceName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", address = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v3, v0, v1}, La4/b;->a(DD)Lcom/miui/autotask/bean/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/autotask/bean/m;->a()D

    move-result-wide v1

    invoke-virtual {v0}, Lcom/miui/autotask/bean/m;->b()D

    move-result-wide v5

    const/16 v0, 0x3ff

    if-eq p1, v0, :cond_2

    const/16 v0, 0x413

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->y:Lcom/miui/autotask/bean/a;

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->r:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "otherData"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->x:Lcom/miui/autotask/bean/a;

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->m:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "companyData"

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->w:Lcom/miui/autotask/bean/a;

    iget-object v3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "homeData"

    :goto_0
    invoke-virtual {v0, p3}, Lcom/miui/autotask/bean/a;->f(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/miui/autotask/bean/a;->g(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/miui/autotask/bean/a;->j(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/miui/autotask/bean/a;->h(D)V

    invoke-virtual {v0, v5, v6}, Lcom/miui/autotask/bean/a;->i(D)V

    iget-object p2, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->u:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->v:Lcom/google/gson/Gson;

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-direct {p0, p1}, Lcom/miui/autotask/activity/AddressSelectActivity;->p0(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/miui/powercenter/autotask/BaseSettingActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e001f

    invoke-virtual {p0, p1}, Lcom/miui/common/base/BaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskItem"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    instance-of v0, p1, Lcom/miui/autotask/taskitem/AddressTaskItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/miui/autotask/taskitem/AddressTaskItem;

    iput-object p1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :goto_0
    iget-object p1, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {p1}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/autotask/activity/AddressSelectActivity;->d:Lcom/miui/autotask/taskitem/AddressTaskItem;

    invoke-virtual {v0}, Lcom/miui/autotask/taskitem/TaskItem;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-direct {p0}, Lcom/miui/autotask/activity/AddressSelectActivity;->r0()V

    invoke-direct {p0}, Lcom/miui/autotask/activity/AddressSelectActivity;->C0()V

    invoke-direct {p0}, Lcom/miui/autotask/activity/AddressSelectActivity;->B0()V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
