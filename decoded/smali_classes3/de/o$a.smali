.class Lde/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/o;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/o;


# direct methods
.method constructor <init>(Lde/o;)V
    .locals 0

    iput-object p1, p0, Lde/o$a;->a:Lde/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lde/o$a;->a:Lde/o;

    invoke-static {p1}, Lde/o;->a(Lde/o;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lde/j;->k0(Landroid/content/Context;)V

    return-void
.end method
