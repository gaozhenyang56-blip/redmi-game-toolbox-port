.class Leg/o$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Leg/o$e;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Leg/o$e;->a:Landroid/content/Context;

    sget-object v1, Leg/o;->a:Ljava/lang/String;

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lue/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
