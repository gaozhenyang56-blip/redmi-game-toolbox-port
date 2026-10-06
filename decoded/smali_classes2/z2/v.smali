.class public final synthetic Lz2/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/os/CountDownTimer;


# direct methods
.method public synthetic constructor <init>(Landroid/os/CountDownTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/v;->a:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lz2/v;->a:Landroid/os/CountDownTimer;

    invoke-static {v0, p1, p2}, Lcom/miui/applicationlock/ConfirmAccessControl;->s0(Landroid/os/CountDownTimer;Landroid/content/DialogInterface;I)V

    return-void
.end method
