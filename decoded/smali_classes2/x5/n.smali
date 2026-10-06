.class public final synthetic Lx5/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx5/p$a;


# direct methods
.method public synthetic constructor <init>(Lx5/p$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/n;->a:Lx5/p$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx5/n;->a:Lx5/p$a;

    invoke-static {v0}, Lx5/p$a;->a(Lx5/p$a;)V

    return-void
.end method
