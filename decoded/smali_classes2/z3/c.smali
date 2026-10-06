.class public final synthetic Lz3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Lz3/d;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;Lz3/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz3/c;->a:Landroid/os/Bundle;

    iput-object p2, p0, Lz3/c;->b:Lz3/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz3/c;->a:Landroid/os/Bundle;

    iget-object v1, p0, Lz3/c;->b:Lz3/d;

    invoke-static {v0, v1}, Lz3/d;->n(Landroid/os/Bundle;Lz3/d;)V

    return-void
.end method
