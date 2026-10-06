.class public final synthetic Lx5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lx5/p$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lx5/p$a;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx5/o;->a:Lx5/p$a;

    iput p2, p0, Lx5/o;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lx5/o;->a:Lx5/p$a;

    iget v1, p0, Lx5/o;->b:I

    invoke-static {v0, v1}, Lx5/p$a;->b(Lx5/p$a;I)V

    return-void
.end method
