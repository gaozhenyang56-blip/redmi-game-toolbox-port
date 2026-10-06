.class public final synthetic Lw8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lw8/q;


# direct methods
.method public synthetic constructor <init>(Lw8/q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw8/n;->a:Lw8/q;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lw8/n;->a:Lw8/q;

    invoke-static {v0, p1, p2}, Lw8/q;->b(Lw8/q;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
