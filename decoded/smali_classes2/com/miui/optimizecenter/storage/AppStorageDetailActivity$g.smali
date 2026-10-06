.class Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->a:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 6

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p1

    iget-object p1, p1, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_2

    new-instance p1, Lwa/a;

    invoke-direct {p1}, Lwa/a;-><init>()V

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v1

    iget-object v1, v1, Lwa/a;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, p1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->D(Landroid/content/pm/ApplicationInfo;Lwa/a;)V

    iget-wide v0, p1, Lwa/a;->codeSize:J

    iget-wide v2, p1, Lwa/a;->dataSize:J

    add-long/2addr v0, v2

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v4}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v4

    iget-wide v4, v4, Lwa/a;->totalSize:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v4}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v4

    iget-wide v4, v4, Lwa/a;->dataSize:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    :cond_1
    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v2

    iput-wide v0, v2, Lwa/a;->totalSize:J

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-wide v1, p1, Lwa/a;->dataSize:J

    iput-wide v1, v0, Lwa/a;->dataSize:J

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-wide v1, p1, Lwa/a;->cacheSize:J

    iput-wide v1, v0, Lwa/a;->cacheSize:J

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-wide v1, p1, Lwa/a;->codeSize:J

    iput-wide v1, v0, Lwa/a;->codeSize:J

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    move-result-object p1

    const/16 v0, -0x3ec

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v0

    iget-object v0, v0, Lwa/a;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object v1

    iget v1, v1, Lwa/a;->uid:I

    invoke-static {v1}, Lx4/z1;->m(I)I

    move-result v1

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->c:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->o0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Landroid/content/pm/IPackageStatsObserver$Stub;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->C(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 0

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->b(Landroid/content/Context;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$g;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
