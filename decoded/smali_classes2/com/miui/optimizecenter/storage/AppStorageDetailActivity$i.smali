.class Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    return-void
.end method

.method private a()V
    .locals 3

    new-instance v0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {v0, v1, v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private b(Landroid/os/Message;Z)V
    .locals 5

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleClearDone succeeded :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppStorageDetail"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x3e9

    if-eqz p2, :cond_2

    const-wide/16 v2, 0x0

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt p2, v4, :cond_1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    invoke-virtual {p1}, Lwa/a;->clearAllData()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    invoke-virtual {p1}, Lwa/a;->clearCache()J

    move-result-wide p1

    :goto_0
    move-wide v2, p1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cleanSize :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " mStorageStats: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p2

    invoke-virtual {p2}, Lwa/a;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->l0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a()V

    :goto_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->n0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p2

    invoke-virtual {p1, p2, v2, v3}, Lcom/miui/optimizecenter/storage/a;->N(Lwa/a;J)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    const/16 p2, 0x44c

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_2

    :cond_2
    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsa/b;->g(Z)Lsa/b;

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->m0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->m0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->b(Landroid/os/Message;Z)V

    goto/16 :goto_2

    :pswitch_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    const v0, 0x7f121834

    invoke-static {p1, v0}, Leg/c;->n(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/a;->D(Landroid/content/Context;)Lcom/miui/optimizecenter/storage/a;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v1

    iget v1, v1, Lwa/a;->uid:I

    invoke-virtual {p1, v0, v1}, Lcom/miui/optimizecenter/storage/a;->O(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    const/16 v0, 0x44c

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    goto/16 :goto_2

    :pswitch_2
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->l0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    goto/16 :goto_2

    :pswitch_3
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-class v2, Landroid/os/UserHandle;

    const-string v3, "getUserId"

    new-array v4, v1, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v6}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v6

    iget v6, v6, Lwa/a;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2, v3, v4, v5}, Lbh/f;->h(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v3}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v4}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v4

    iget-object v4, v4, Lwa/a;->pkgName:Ljava/lang/String;

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5, v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->e(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "AppStorageDetail"

    const-string v4, "handle message get application info error"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v2

    iput-object p1, v2, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    if-eqz v0, :cond_2

    const p1, 0x7f1201c3

    goto :goto_1

    :cond_2
    const p1, 0x7f1201bd

    :goto_1
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0, p1}, Leg/c;->n(Landroid/content/Context;I)V

    goto :goto_2

    :pswitch_4
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->m0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->m0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/a;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_3
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch -0x3ee
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
