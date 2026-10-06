.class Lcom/miui/firstaidkit/FirstAidKitActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp5/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/FirstAidKitActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lo5/e;


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;Lo5/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$d;->b:Lo5/e;

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/securityscan/scanner/a;)V
    .locals 0

    return-void
.end method

.method public b(I)V
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "FirstAidKitActivity"

    const-string v2, "refreshOptimizingUi onFinishScan"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->s0(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I

    iget-object v1, v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->b:Lo5/b;

    new-instance v2, Lcom/miui/firstaidkit/FirstAidKitActivity$f;

    iget-object v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$d;->b:Lo5/e;

    invoke-direct {v2, v0, v3, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity$f;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;Lo5/e;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
