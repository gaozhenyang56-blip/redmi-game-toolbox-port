.class Llg/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llg/j;->F(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llg/j;


# direct methods
.method constructor <init>(Llg/j;)V
    .locals 0

    iput-object p1, p0, Llg/j$a;->a:Llg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Llg/j$a;->a:Llg/j;

    iget-object v0, v0, Llg/k;->a:Landroid/content/Context;

    const/16 v1, 0xc

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Lx4/j;->a(Landroid/content/Context;II)V

    return-void
.end method
