.class public final synthetic Lxc/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lxc/b;


# direct methods
.method public synthetic constructor <init>(Lxc/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc/r;->a:Lxc/b;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lxc/r;->a:Lxc/b;

    invoke-static {v0, p1}, Lxc/u;->a(Lxc/b;Landroid/content/DialogInterface;)V

    return-void
.end method
