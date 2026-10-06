.class Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/detection/RiskAppDeleteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/permcenter/detection/RiskAppDeleteActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic v1(Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 1

    iget-object p2, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/permcenter/detection/RiskAppDeleteActivity;

    new-instance v0, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d$a;

    invoke-direct {v0, p0, p1}, Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d$a;-><init>(Lcom/miui/permcenter/detection/RiskAppDeleteActivity$d;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
