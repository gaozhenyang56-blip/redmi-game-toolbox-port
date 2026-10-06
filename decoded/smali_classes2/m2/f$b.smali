.class Lm2/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm2/f;->Q(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lm2/f$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lm2/f$b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lm2/f$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lm2/f$b;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lm2/f;->H(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
