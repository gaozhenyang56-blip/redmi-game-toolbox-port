.class public final synthetic Lf5/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj5/a;


# direct methods
.method public synthetic constructor <init>(Lj5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf5/i;->a:Lj5/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lf5/i;->a:Lj5/a;

    invoke-virtual {v0}, Lj5/a;->b()V

    return-void
.end method
