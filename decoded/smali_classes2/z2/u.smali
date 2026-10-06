.class public final synthetic Lz2/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/u;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lz2/u;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-static {v0, p1}, Lcom/miui/applicationlock/ConfirmAccessControl;->o0(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/content/DialogInterface;)V

    return-void
.end method
