.class Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->access$200(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->access$300(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->access$000(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;)Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$SeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->access$200(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;->access$102(Lcom/miui/networkassistant/ui/dialog/SeekBarDialog;I)I

    :cond_0
    return-void
.end method
