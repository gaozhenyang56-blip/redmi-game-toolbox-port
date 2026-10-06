.class public final synthetic Lxc/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lxc/b;


# direct methods
.method public synthetic constructor <init>(Lxc/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lxc/s;->a:Lxc/b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lxc/s;->a:Lxc/b;

    invoke-static {v0, p1, p2}, Lxc/u;->c(Lxc/b;Landroid/content/DialogInterface;I)V

    return-void
.end method
