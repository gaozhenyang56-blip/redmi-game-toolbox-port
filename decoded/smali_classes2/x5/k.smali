.class public final synthetic Lx5/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx5/p;


# direct methods
.method public synthetic constructor <init>(Lx5/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/k;->a:Lx5/p;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lx5/k;->a:Lx5/p;

    invoke-static {v0}, Lx5/p;->d(Lx5/p;)V

    return-void
.end method
