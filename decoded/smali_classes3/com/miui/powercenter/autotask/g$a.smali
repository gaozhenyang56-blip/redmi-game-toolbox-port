.class Lcom/miui/powercenter/autotask/g$a;
.super Lmiuix/os/AsyncTaskWithProgress;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/g;->d(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;[Ljava/lang/Long;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiuix/os/AsyncTaskWithProgress<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic o:[Ljava/lang/Long;

.field final synthetic p:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;[Ljava/lang/Long;Landroid/content/Context;)V
    .locals 0

    iput-object p2, p0, Lcom/miui/powercenter/autotask/g$a;->o:[Ljava/lang/Long;

    iput-object p3, p0, Lcom/miui/powercenter/autotask/g$a;->p:Landroid/content/Context;

    invoke-direct {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;-><init>(Landroidx/fragment/app/FragmentManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/g$a;->u([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/powercenter/autotask/g$a;->v(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs u([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget-object v1, p0, Lcom/miui/powercenter/autotask/g$a;->o:[Ljava/lang/Long;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/miui/powercenter/autotask/g$a;->p:Landroid/content/Context;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/miui/powercenter/autotask/g;->a(Landroid/content/Context;J)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    mul-int/lit8 v2, v0, 0x64

    iget-object v3, p0, Lcom/miui/powercenter/autotask/g$a;->o:[Ljava/lang/Long;

    array-length v3, v3

    div-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, p1

    invoke-virtual {p0, v1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected v(Ljava/lang/Void;)V
    .locals 1

    invoke-super {p0, p1}, Lmiuix/os/AsyncTaskWithProgress;->onPostExecute(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/miui/powercenter/autotask/g$a;->p:Landroid/content/Context;

    iget-object v0, p0, Lcom/miui/powercenter/autotask/g$a;->o:[Ljava/lang/Long;

    invoke-static {p1, v0}, Lcom/miui/powercenter/autotask/g;->b(Landroid/content/Context;[Ljava/lang/Long;)V

    return-void
.end method
