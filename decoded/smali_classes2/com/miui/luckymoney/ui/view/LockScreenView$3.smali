.class Lcom/miui/luckymoney/ui/view/LockScreenView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/luckymoney/ui/view/LockScreenView;->clearKeyguardNotifications(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private passedMilliseconds:I

.field final synthetic this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

.field final synthetic val$milliseconds:I


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/view/LockScreenView;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    iput p2, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->val$milliseconds:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/luckymoney/utils/ScreenUtil;->clearKeyguardNotifications(Landroid/content/Context;)V

    iget v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    add-int/lit8 v0, v0, 0x14

    iput v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->passedMilliseconds:I

    iget v1, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->val$milliseconds:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    invoke-static {v0}, Lcom/miui/luckymoney/ui/view/LockScreenView;->access$000(Lcom/miui/luckymoney/ui/view/LockScreenView;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/luckymoney/ui/view/LockScreenView$3;->this$0:Lcom/miui/luckymoney/ui/view/LockScreenView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/luckymoney/ui/view/LockScreenView;->access$102(Lcom/miui/luckymoney/ui/view/LockScreenView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
