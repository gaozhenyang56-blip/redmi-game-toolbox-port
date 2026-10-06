.class public final synthetic Li7/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Li7/i;


# direct methods
.method public synthetic constructor <init>(Li7/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li7/f;->a:Li7/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Li7/f;->a:Li7/i;

    invoke-static {v0}, Li7/i;->c(Li7/i;)V

    return-void
.end method
