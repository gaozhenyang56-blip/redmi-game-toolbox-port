.class public final synthetic Lef/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lef/m$a;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lef/m$a;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lef/h;->a:Lef/m$a;

    iput-boolean p2, p0, Lef/h;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lef/h;->a:Lef/m$a;

    iget-boolean v1, p0, Lef/h;->b:Z

    invoke-static {v0, v1}, Lef/m;->j(Lef/m$a;Z)V

    return-void
.end method
