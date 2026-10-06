.class public final synthetic Ls8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ls8/h;


# direct methods
.method public synthetic constructor <init>(Ls8/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls8/a;->a:Ls8/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ls8/a;->a:Ls8/h;

    invoke-static {v0}, Ls8/h;->f(Ls8/h;)V

    return-void
.end method
