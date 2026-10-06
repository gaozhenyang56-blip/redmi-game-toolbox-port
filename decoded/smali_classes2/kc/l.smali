.class public final synthetic Lkc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpActiveChangedListener;


# instance fields
.field public final synthetic a:Lkc/q;


# direct methods
.method public synthetic constructor <init>(Lkc/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkc/l;->a:Lkc/q;

    return-void
.end method


# virtual methods
.method public final onOpActiveChanged(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lkc/l;->a:Lkc/q;

    invoke-static {v0, p1, p2, p3, p4}, Lkc/q;->d(Lkc/q;Ljava/lang/String;ILjava/lang/String;Z)V

    return-void
.end method
