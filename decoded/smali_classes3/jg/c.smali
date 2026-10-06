.class public final synthetic Ljg/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljg/e;


# direct methods
.method public synthetic constructor <init>(Ljg/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljg/c;->a:Ljg/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ljg/c;->a:Ljg/e;

    invoke-static {v0}, Ljg/e;->a(Ljg/e;)V

    return-void
.end method
