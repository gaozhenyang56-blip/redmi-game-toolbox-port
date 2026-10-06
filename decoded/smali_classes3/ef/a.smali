.class public final synthetic Lef/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lef/m;


# direct methods
.method public synthetic constructor <init>(Lef/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/a;->a:Lef/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lef/a;->a:Lef/m;

    invoke-static {v0}, Lef/m;->g(Lef/m;)V

    return-void
.end method
