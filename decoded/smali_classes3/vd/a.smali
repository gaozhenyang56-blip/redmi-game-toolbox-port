.class public final synthetic Lvd/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lvd/b;


# direct methods
.method public synthetic constructor <init>(Lvd/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvd/a;->a:Lvd/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lvd/a;->a:Lvd/b;

    invoke-static {v0}, Lvd/b;->a(Lvd/b;)V

    return-void
.end method
