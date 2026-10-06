.class public final synthetic Lpg/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/ref/WeakReference;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Ljava/lang/ref/WeakReference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpg/h;->a:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lpg/h;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lpg/h;->a:Ljava/lang/ref/WeakReference;

    iget-boolean v1, p0, Lpg/h;->b:Z

    invoke-static {v0, v1}, Lpg/i;->a(Ljava/lang/ref/WeakReference;Z)V

    return-void
.end method
