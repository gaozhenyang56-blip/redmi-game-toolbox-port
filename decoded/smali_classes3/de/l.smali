.class public final synthetic Lde/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lde/k$c;


# direct methods
.method public synthetic constructor <init>(Lde/k$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/l;->a:Lde/k$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lde/l;->a:Lde/k$c;

    invoke-static {v0}, Lde/k$c;->a(Lde/k$c;)V

    return-void
.end method
