.class Lzi/l7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzi/l7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lzi/p7;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lzi/p7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lzi/l7$a;->b:Lzi/p7;

    iput-object p1, p0, Lzi/l7$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lzi/l7$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lzi/l7$a;->b:Lzi/p7;

    invoke-static {v0, v1}, Lzi/l7;->e(Landroid/content/Context;Lzi/p7;)V

    return-void
.end method
