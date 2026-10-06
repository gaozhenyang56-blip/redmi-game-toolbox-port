.class Lcom/miui/firstaidkit/FirstAidKitActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
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

.field private c:I


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;Lo5/e;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$f;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$f;->b:Lo5/e;

    iput p3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$f;->c:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->x0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/ui/ProgressLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$f;->b:Lo5/e;

    iget v3, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$f;->c:I

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/miui/firstaidkit/ui/ProgressLayout;->c(Lo5/e;Z)V

    const-string v1, "FirstAidKitActivity"

    const-string v2, "refreshOptimizingUi refreshOptimizingUi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->I0()V

    :cond_2
    :goto_1
    return-void
.end method
