.class Lcom/miui/bubbles/BubblesManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/bubbles/BubblesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/bubbles/BubblesManager;


# direct methods
.method constructor <init>(Lcom/miui/bubbles/BubblesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/bubbles/BubblesManager$1;->this$0:Lcom/miui/bubbles/BubblesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget-object p1, p0, Lcom/miui/bubbles/BubblesManager$1;->this$0:Lcom/miui/bubbles/BubblesManager;

    invoke-static {p1}, Lcom/miui/bubbles/BubblesManager;->access$000(Lcom/miui/bubbles/BubblesManager;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/bubbles/BubblesManager;->onVisibilityChanged(Z)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
