.class Lf7/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf7/d;->i(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lf7/d;


# direct methods
.method constructor <init>(Lf7/d;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lf7/d$a;->c:Lf7/d;

    iput-object p2, p0, Lf7/d$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lf7/d$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0
    return-void
.end method
