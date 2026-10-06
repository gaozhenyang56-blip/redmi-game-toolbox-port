.class public final synthetic Lve/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lve/g;


# direct methods
.method public synthetic constructor <init>(Lve/g;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lve/f;->a:Lve/g;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lve/f;->a:Lve/g;

    invoke-static {v0}, Lve/g;->a(Lve/g;)V

    return-void
.end method
