.class public final synthetic Lt9/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/miui/idprovider/ui/GrantPermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/idprovider/ui/GrantPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt9/f;->a:Lcom/miui/idprovider/ui/GrantPermissionActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lt9/f;->a:Lcom/miui/idprovider/ui/GrantPermissionActivity;

    invoke-static {v0, p1}, Lcom/miui/idprovider/ui/GrantPermissionActivity;->c0(Lcom/miui/idprovider/ui/GrantPermissionActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
