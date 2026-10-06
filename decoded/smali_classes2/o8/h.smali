.class public final synthetic Lo8/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo8/i;


# direct methods
.method public synthetic constructor <init>(Lo8/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo8/h;->a:Lo8/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo8/h;->a:Lo8/i;

    invoke-static {v0}, Lo8/i;->a(Lo8/i;)V

    return-void
.end method
