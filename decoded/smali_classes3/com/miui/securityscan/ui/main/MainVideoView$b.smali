.class Lcom/miui/securityscan/ui/main/MainVideoView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/MainVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/MainVideoView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/MainVideoView;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView$b;->a:Ljava/lang/ref/WeakReference;

    iput p2, p0, Lcom/miui/securityscan/ui/main/MainVideoView$b;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/MainVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView$b;->b:I

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$302(Lcom/miui/securityscan/ui/main/MainVideoView;I)I

    iget v1, p0, Lcom/miui/securityscan/ui/main/MainVideoView$b;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->hideBgView()V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->setPlaySpeed(F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x6

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    :cond_2
    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$400(Lcom/miui/securityscan/ui/main/MainVideoView;)Lcom/miui/securityscan/ui/main/MainVideoView$c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$400(Lcom/miui/securityscan/ui/main/MainVideoView;)Lcom/miui/securityscan/ui/main/MainVideoView$c;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/securityscan/ui/main/MainVideoView$c;->w()V

    :cond_3
    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->updateBackground()V

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->showBgView()V

    :cond_4
    :goto_0
    return-void
.end method
