.class public final synthetic Lo2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo2/b;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lo2/b;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo2/a;->a:Lo2/b;

    iput-boolean p2, p0, Lo2/a;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo2/a;->a:Lo2/b;

    iget-boolean v1, p0, Lo2/a;->b:Z

    invoke-static {v0, v1}, Lo2/b;->a(Lo2/b;Z)V

    return-void
.end method
