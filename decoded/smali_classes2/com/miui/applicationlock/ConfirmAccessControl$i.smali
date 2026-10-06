.class Lcom/miui/applicationlock/ConfirmAccessControl$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;->E2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/CountDownTimer;

.field final synthetic b:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/CountDownTimer;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$i;->b:Lcom/miui/applicationlock/ConfirmAccessControl;

    iput-object p2, p0, Lcom/miui/applicationlock/ConfirmAccessControl$i;->a:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$i;->a:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    return-void
.end method
