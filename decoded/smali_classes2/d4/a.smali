.class public final synthetic Ld4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld4/b;


# direct methods
.method public synthetic constructor <init>(Ld4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/a;->a:Ld4/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld4/a;->a:Ld4/b;

    invoke-static {v0}, Ld4/b;->a(Ld4/b;)V

    return-void
.end method
