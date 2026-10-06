.class Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/permcenter/autostart/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/autostart/AutoStartManagementActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/autostart/AutoStartManagementActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Lcom/miui/permcenter/autostart/AutoStartManagementActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    return-void
.end method

.method public static synthetic b(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->e(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->g(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic d(Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;Lob/b;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->f(Lob/b;ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method private static synthetic e(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    return-void
.end method

.method private synthetic f(Lob/b;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->h(Lob/b;Z)V

    return-void
.end method

.method private static synthetic g(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->m0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    return-void
.end method

.method private h(Lob/b;Z)V
    .locals 9

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPermissionToAction()Ljava/util/HashMap;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v4, v2

    const-wide/16 v2, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/miui/permcenter/AppPermissionInfo;->setIsAllowStartByWakePath(Z)V

    iput-boolean p2, p1, Lob/b;->b:Z

    new-instance v8, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getUid()I

    move-result v1

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v3

    move-object v1, v8

    move-object v2, v0

    move v6, p2

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;IILjava/lang/String;ZZ)V

    invoke-static {v0, v8}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->j0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;)Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->i0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    move-result-object v1

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->k0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->i0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/AutoStartManagementActivity$e;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->l0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;Lcom/miui/permcenter/AppPermissionInfo;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public a(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->u0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->f0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)I

    move-result v1

    if-eq p1, v1, :cond_3

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->g0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/autostart/a;->getItemCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->g0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/permcenter/autostart/a;->n(I)Lob/b;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/permcenter/AppPermissionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity;->h0(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)Lcom/miui/permcenter/autostart/b;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/permcenter/autostart/b;->c:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/miui/appmanager/AppManageUtils;->j0(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/miui/permcenter/autostart/e;

    invoke-direct {v1, v0}, Lcom/miui/permcenter/autostart/e;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    new-instance v2, Lcom/miui/permcenter/autostart/f;

    invoke-direct {v2, p0, p1, p2}, Lcom/miui/permcenter/autostart/f;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;Lob/b;Z)V

    new-instance p2, Lcom/miui/permcenter/autostart/g;

    invoke-direct {p2, v0}, Lcom/miui/permcenter/autostart/g;-><init>(Lcom/miui/permcenter/autostart/AutoStartManagementActivity;)V

    invoke-virtual {p1}, Lob/b;->c()Lcom/miui/permcenter/AppPermissionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/permcenter/AppPermissionInfo;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, v2, p2, p1}, Lcom/miui/permcenter/q;->v(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/miui/permcenter/autostart/AutoStartManagementActivity$g;->h(Lob/b;Z)V

    :cond_3
    :goto_0
    return-void
.end method
