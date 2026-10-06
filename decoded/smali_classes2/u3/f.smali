.class public final synthetic Lu3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lu3/h;


# direct methods
.method public synthetic constructor <init>(Lu3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/f;->a:Lu3/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lu3/f;->a:Lu3/h;

    invoke-static {v0}, Lu3/h;->c(Lu3/h;)V

    return-void
.end method
