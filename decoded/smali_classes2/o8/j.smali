.class public final synthetic Lo8/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo8/k;


# direct methods
.method public synthetic constructor <init>(Lo8/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/j;->a:Lo8/k;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo8/j;->a:Lo8/k;

    invoke-static {v0}, Lo8/k;->a(Lo8/k;)V

    return-void
.end method
