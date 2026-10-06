.class public final synthetic Lh7/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lh7/i;


# direct methods
.method public synthetic constructor <init>(Lh7/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh7/h;->a:Lh7/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lh7/h;->a:Lh7/i;

    invoke-virtual {v0}, Lh7/i;->b()V

    return-void
.end method
