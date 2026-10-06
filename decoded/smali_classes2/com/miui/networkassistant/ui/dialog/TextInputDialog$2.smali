.class Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->onBuild(Lmiuix/appcompat/app/AlertDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->access$200(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->access$100(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->access$400(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2$1;

    invoke-direct {v0, p0}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2$1;-><init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
