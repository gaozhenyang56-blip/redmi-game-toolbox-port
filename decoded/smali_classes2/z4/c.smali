.class public final synthetic Lz4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lz4/d;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lz4/d;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/c;->a:Lz4/d;

    iput-object p2, p0, Lz4/c;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz4/c;->a:Lz4/d;

    iget-object v1, p0, Lz4/c;->b:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lz4/d;->a(Lz4/d;Landroid/os/Bundle;)V

    return-void
.end method
